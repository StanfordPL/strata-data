  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP  Bytes  Opcode                     
.target:                          #        0    0      OPC=<label>                
  vunpckhpd %xmm1, %xmm1, %xmm12  #  1     0    4      OPC=vunpckhpd_xmm_xmm_xmm  
  vmovd %xmm12, %edx              #  2     0x4  4      OPC=vmovd_r32_xmm          
  movl %edx, %ebx                 #  3     0x8  2      OPC=movl_r32_r32           
  retq                            #  4     0xa  1      OPC=retq                   
                                                                                  
.size target, .-target
