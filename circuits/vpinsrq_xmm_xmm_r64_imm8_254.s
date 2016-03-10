  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode                        
.target:                             #        0     0      OPC=<label>                   
  callq .move_128_064_xmm2_r10_r11   #  1     0     5      OPC=callq_label               
  vzeroall                           #  2     0x5   3      OPC=vzeroall                  
  callq .move_064_128_r10_r11_xmm3   #  3     0x8   5      OPC=callq_label               
  vfnmsub132sd %xmm1, %xmm3, %xmm13  #  4     0xd   5      OPC=vfnmsub132sd_xmm_xmm_xmm  
  movq %rbx, %r10                    #  5     0x12  3      OPC=movq_r64_r64              
  vmovaps %ymm13, %ymm1              #  6     0x15  5      OPC=vmovaps_ymm_ymm           
  callq .move_064_128_r10_r11_xmm1   #  7     0x1a  5      OPC=callq_label               
  retq                               #  8     0x1f  1      OPC=retq                      
                                                                                         
.size target, .-target
