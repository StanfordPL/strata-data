  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                         #  Line  RIP   Bytes  Opcode                   
.target:                       #        0     0      OPC=<label>              
  vmovsd %xmm1, %xmm1, %xmm5   #  1     0     4      OPC=vmovsd_xmm_xmm_xmm   
  orpd %xmm1, %xmm5            #  2     0x4   4      OPC=orpd_xmm_xmm         
  vandnpd %xmm5, %xmm1, %xmm2  #  3     0x8   4      OPC=vandnpd_xmm_xmm_xmm  
  vmovddup %xmm2, %xmm4        #  4     0xc   4      OPC=vmovddup_xmm_xmm     
  movdqa %xmm4, %xmm1          #  5     0x10  4      OPC=movdqa_xmm_xmm       
  retq                         #  6     0x14  1      OPC=retq                 
                                                                              
.size target, .-target
