  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                           #  Line  RIP  Bytes  Opcode                      
.target:                         #        0    0      OPC=<label>                 
  vcvtsi2sdl %ebx, %xmm1, %xmm8  #  1     0    4      OPC=vcvtsi2sdl_xmm_xmm_r32  
  vmovapd %xmm8, %xmm5           #  2     0x4  5      OPC=vmovapd_xmm_xmm         
  movaps %xmm5, %xmm1            #  3     0x9  3      OPC=movaps_xmm_xmm          
  retq                           #  4     0xc  1      OPC=retq                    
                                                                                  
.size target, .-target
