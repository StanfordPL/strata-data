  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                               #  Line  RIP   Bytes  Opcode                  
.target:                             #        0     0      OPC=<label>             
  vxorpd %xmm2, %xmm2, %xmm6         #  1     0     4      OPC=vxorpd_xmm_xmm_xmm  
  vrcpps %ymm6, %ymm1                #  2     0x4   4      OPC=vrcpps_ymm_ymm      
  callq .move_byte_5_of_ymm1_to_r8b  #  3     0x8   5      OPC=callq_label         
  cmovbeq %rcx, %rbx                 #  4     0xd   4      OPC=cmovbeq_r64_r64     
  xaddb %r8b, %bl                    #  5     0x11  4      OPC=xaddb_r8_r8         
  retq                               #  6     0x15  1      OPC=retq                
                                                                                   
.size target, .-target
