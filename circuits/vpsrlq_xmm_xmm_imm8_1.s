  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                               #  Line  RIP   Bytes  Opcode                        
.target:                             #        0     0      OPC=<label>                   
  callq .move_128_064_xmm2_r8_r9     #  1     0     5      OPC=callq_label               
  vzeroall                           #  2     0x5   3      OPC=vzeroall                  
  sarq $0x1, %r9                     #  3     0x8   3      OPC=sarq_r64_one              
  vfnmsub132pd %ymm3, %ymm14, %ymm6  #  4     0xb   5      OPC=vfnmsub132pd_ymm_ymm_ymm  
  sarq $0x1, %r8                     #  5     0x10  3      OPC=sarq_r64_one              
  callq .move_064_128_r8_r9_xmm3     #  6     0x13  5      OPC=callq_label               
  vpandn %ymm3, %ymm6, %ymm1         #  7     0x18  4      OPC=vpandn_ymm_ymm_ymm        
  retq                               #  8     0x1c  1      OPC=retq                      
                                                                                         
.size target, .-target
