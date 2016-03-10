  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                            #  Line  RIP  Bytes  Opcode                      
.target:                          #        0    0      OPC=<label>                 
  vcvtsi2sdl %ebx, %xmm1, %xmm14  #  1     0    4      OPC=vcvtsi2sdl_xmm_xmm_r32  
  vmovups %xmm14, %xmm0           #  2     0x4  5      OPC=vmovups_xmm_xmm         
  movapd %xmm0, %xmm1             #  3     0x9  4      OPC=movapd_xmm_xmm          
  retq                            #  4     0xd  1      OPC=retq                    
                                                                                   
.size target, .-target
