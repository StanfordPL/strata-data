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
  vcvtsi2sdl %edx, %xmm15, %xmm7            #  3     0x8   4      OPC=vcvtsi2sdl_xmm_xmm_r32  
  vmovddup %ymm7, %ymm1                     #  4     0xc   4      OPC=vmovddup_ymm_ymm        
  cvtsi2sdl %eax, %xmm1                     #  5     0x10  4      OPC=cvtsi2sdl_xmm_r32       
  retq                                      #  6     0x14  1      OPC=retq                    
                                                                                              
.size target, .-target
