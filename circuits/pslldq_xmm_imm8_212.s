  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                   #  Line  RIP  Bytes  Opcode                
.target:                 #        0    0      OPC=<label>           
  pmovzxwd %xmm1, %xmm1  #  1     0    5      OPC=pmovzxwd_xmm_xmm  
  subpd %xmm1, %xmm1     #  2     0x5  4      OPC=subpd_xmm_xmm     
  pand %xmm1, %xmm1      #  3     0x9  4      OPC=pand_xmm_xmm      
  retq                   #  4     0xd  1      OPC=retq              
                                                                    
.size target, .-target
