  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                      
.target:                                        #        0     0      OPC=<label>                 
  callq .move_128_032_xmm2_r10d_r11d_r12d_r13d  #  1     0     5      OPC=callq_label             
  vmovd %r11d, %xmm13                           #  2     0x5   5      OPC=vmovd_xmm_r32           
  vcvtsi2sdl %r10d, %xmm2, %xmm12               #  3     0xa   5      OPC=vcvtsi2sdl_xmm_xmm_r32  
  cvtsi2sdl %r11d, %xmm13                       #  4     0xf   5      OPC=cvtsi2sdl_xmm_r32       
  callq .move_64_128_xmm12_xmm13_xmm1           #  5     0x14  5      OPC=callq_label             
  retq                                          #  6     0x19  1      OPC=retq                    
                                                                                                  
.size target, .-target
