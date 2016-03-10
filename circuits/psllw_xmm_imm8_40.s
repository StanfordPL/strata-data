  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                    #  Line  RIP  Bytes  Opcode                
.target:                  #        0    0      OPC=<label>           
  andnpd %xmm1, %xmm1     #  1     0    4      OPC=andnpd_xmm_xmm    
  cvtpd2dq %xmm1, %xmm10  #  2     0x4  5      OPC=cvtpd2dq_xmm_xmm  
  orpd %xmm10, %xmm1      #  3     0x9  5      OPC=orpd_xmm_xmm      
  retq                    #  4     0xe  1      OPC=retq              
                                                                     
.size target, .-target
