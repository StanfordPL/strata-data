  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                        #  Line  RIP  Bytes  Opcode                  
.target:                      #        0    0      OPC=<label>             
  vxorps %xmm2, %xmm2, %xmm2  #  1     0    4      OPC=vxorps_xmm_xmm_xmm  
  cvtpd2dq %xmm2, %xmm7       #  2     0x4  4      OPC=cvtpd2dq_xmm_xmm    
  movdqa %xmm7, %xmm1         #  3     0x8  4      OPC=movdqa_xmm_xmm      
  retq                        #  4     0xc  1      OPC=retq                
                                                                           
.size target, .-target
