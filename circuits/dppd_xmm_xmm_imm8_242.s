  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                           #  Line  RIP   Bytes  Opcode                      
.target:                         #        0     0      OPC=<label>                 
  vxorpd %xmm2, %xmm2, %xmm4     #  1     0     4      OPC=vxorpd_xmm_xmm_xmm      
  sqrtps %xmm4, %xmm10           #  2     0x4   4      OPC=sqrtps_xmm_xmm          
  vmulpd %xmm2, %xmm1, %xmm4     #  3     0x8   4      OPC=vmulpd_xmm_xmm_xmm      
  vhaddpd %xmm4, %xmm4, %xmm4    #  4     0xc   4      OPC=vhaddpd_xmm_xmm_xmm     
  vmovq %xmm10, %rdx             #  5     0x10  5      OPC=vmovq_r64_xmm           
  vcvtsi2sdl %edx, %xmm4, %xmm0  #  6     0x15  4      OPC=vcvtsi2sdl_xmm_xmm_r32  
  movdqu %xmm0, %xmm1            #  7     0x19  4      OPC=movdqu_xmm_xmm          
  retq                           #  8     0x1d  1      OPC=retq                    
                                                                                   
.size target, .-target
