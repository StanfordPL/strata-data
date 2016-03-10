  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                        #  Line  RIP  Bytes  Opcode                  
.target:                      #        0    0      OPC=<label>             
  vorpd %xmm2, %xmm3, %xmm0   #  1     0    4      OPC=vorpd_xmm_xmm_xmm   
  vxorps %xmm2, %xmm0, %xmm5  #  2     0x4  4      OPC=vxorps_xmm_xmm_xmm  
  vmovdqa %xmm5, %xmm1        #  3     0x8  4      OPC=vmovdqa_xmm_xmm     
  retq                        #  4     0xc  1      OPC=retq                
                                                                           
.size target, .-target
