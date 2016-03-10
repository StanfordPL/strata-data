  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP   Bytes  Opcode                    
.target:                           #        0     0      OPC=<label>               
  callq .move_128_064_xmm2_r8_r9   #  1     0     5      OPC=callq_label           
  movq %r8, %r9                    #  2     0x5   3      OPC=movq_r64_r64          
  callq .move_016_032_r8w_r9w_ebx  #  3     0x8   5      OPC=callq_label           
  vmovd %ebx, %xmm11               #  4     0xd   4      OPC=vmovd_xmm_r32         
  vpbroadcastd %xmm11, %ymm1       #  5     0x11  5      OPC=vpbroadcastd_ymm_xmm  
  retq                             #  6     0x16  1      OPC=retq                  
                                                                                   
.size target, .-target
