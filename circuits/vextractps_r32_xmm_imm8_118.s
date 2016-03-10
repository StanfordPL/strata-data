  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP  Bytes  Opcode                     
.target:                          #        0    0      OPC=<label>                
  vorpd %xmm1, %xmm1, %xmm12      #  1     0    4      OPC=vorpd_xmm_xmm_xmm      
  vunpckhpd %xmm12, %xmm1, %xmm3  #  2     0x4  5      OPC=vunpckhpd_xmm_xmm_xmm  
  vmovd %xmm3, %ebx               #  3     0x9  4      OPC=vmovd_r32_xmm          
  retq                            #  4     0xd  1      OPC=retq                   
                                                                                  
.size target, .-target
