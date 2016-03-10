  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode                  
.target:                             #        0     0      OPC=<label>             
  punpckhqdq %xmm1, %xmm1            #  1     0     4      OPC=punpckhqdq_xmm_xmm  
  xorq %rdx, %rdx                    #  2     0x4   3      OPC=xorq_r64_r64        
  subss %xmm1, %xmm1                 #  3     0x7   4      OPC=subss_xmm_xmm       
  callq .read_cf_into_rbx            #  4     0xb   5      OPC=callq_label         
  callq .move_byte_7_of_ymm1_to_r8b  #  5     0x10  5      OPC=callq_label         
  adcb %r8b, %bl                     #  6     0x15  3      OPC=adcb_r8_r8          
  retq                               #  7     0x18  1      OPC=retq                
                                                                                   
.size target, .-target
