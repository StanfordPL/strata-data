  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                            #  Line  RIP  Bytes  Opcode                      
.target:                          #        0    0      OPC=<label>                 
  vcvtsi2sdl %ebx, %xmm1, %xmm10  #  1     0    4      OPC=vcvtsi2sdl_xmm_xmm_r32  
  movaps %xmm10, %xmm1            #  2     0x4  4      OPC=movaps_xmm_xmm          
  retq                            #  3     0x8  1      OPC=retq                    
                                                                                   
.size target, .-target
