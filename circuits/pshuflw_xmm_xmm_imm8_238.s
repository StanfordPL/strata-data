  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                        #  Line  RIP  Bytes  Opcode                  
.target:                      #        0    0      OPC=<label>             
  vmovshdup %xmm2, %xmm5      #  1     0    4      OPC=vmovshdup_xmm_xmm   
  vmovss %xmm5, %xmm2, %xmm2  #  2     0x4  4      OPC=vmovss_xmm_xmm_xmm  
  movapd %xmm2, %xmm1         #  3     0x8  4      OPC=movapd_xmm_xmm      
  retq                        #  4     0xc  1      OPC=retq                
                                                                           
.size target, .-target
