  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                               #  Line  RIP   Bytes  Opcode                    
.target:                             #        0     0      OPC=<label>               
  vzeroall                           #  1     0     3      OPC=vzeroall              
  divps %xmm11, %xmm11               #  2     0x3   4      OPC=divps_xmm_xmm         
  callq .move_128_064_xmm1_r8_r9     #  3     0x7   5      OPC=callq_label           
  incl %r8d                          #  4     0xc   3      OPC=incl_r32              
  subw %r8w, %r9w                    #  5     0xf   4      OPC=subw_r16_r16          
  vpmovsxdq %xmm11, %ymm1            #  6     0x13  5      OPC=vpmovsxdq_ymm_xmm     
  callq .move_r9b_to_byte_0_of_ymm1  #  7     0x18  5      OPC=callq_label           
  vpbroadcastb %xmm1, %ymm1          #  8     0x1d  5      OPC=vpbroadcastb_ymm_xmm  
  retq                               #  9     0x22  1      OPC=retq                  
                                                                                     
.size target, .-target
