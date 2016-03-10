  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                    #  Line  RIP   Bytes  Opcode                 
.target:                  #        0     0      OPC=<label>            
  movdqu %xmm2, %xmm1     #  1     0     4      OPC=movdqu_xmm_xmm     
  pandn %xmm1, %xmm1      #  2     0x4   4      OPC=pandn_xmm_xmm      
  cvttpd2dq %xmm1, %xmm0  #  3     0x8   4      OPC=cvttpd2dq_xmm_xmm  
  movddup %xmm0, %xmm1    #  4     0xc   4      OPC=movddup_xmm_xmm    
  retq                    #  5     0x10  1      OPC=retq               
                                                                       
.size target, .-target
