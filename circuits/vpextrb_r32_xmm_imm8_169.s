  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode                  
.target:                             #        0     0      OPC=<label>             
  vminss %xmm1, %xmm1, %xmm12        #  1     0     4      OPC=vminss_xmm_xmm_xmm  
  vpandn %xmm1, %xmm12, %xmm2        #  2     0x4   4      OPC=vpandn_xmm_xmm_xmm  
  vmovq %xmm2, %rbx                  #  3     0x8   5      OPC=vmovq_r64_xmm       
  negw %bx                           #  4     0xd   3      OPC=negw_r16            
  callq .move_byte_9_of_ymm1_to_r9b  #  5     0x10  5      OPC=callq_label         
  xchgb %bl, %r9b                    #  6     0x15  3      OPC=xchgb_r8_r8         
  retq                               #  7     0x18  1      OPC=retq                
                                                                                   
.size target, .-target
