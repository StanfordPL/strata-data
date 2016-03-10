  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                 
.target:                                    #        0     0      OPC=<label>            
  callq .move_128_032_xmm2_eax_edx_r8d_r9d  #  1     0     5      OPC=callq_label        
  vzeroall                                  #  2     0x5   3      OPC=vzeroall           
  cvtsi2sdl %edx, %xmm13                    #  3     0x8   5      OPC=cvtsi2sdl_xmm_r32  
  cvtsi2sdl %eax, %xmm12                    #  4     0xd   5      OPC=cvtsi2sdl_xmm_r32  
  callq .move_64_128_xmm12_xmm13_xmm1       #  5     0x12  5      OPC=callq_label        
  retq                                      #  6     0x17  1      OPC=retq               
                                                                                         
.size target, .-target
