  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                  #  Line  RIP  Bytes  Opcode              
.target:                #        0    0      OPC=<label>         
  movapd %xmm1, %xmm15  #  1     0    5      OPC=movapd_xmm_xmm  
  pand %xmm2, %xmm15    #  2     0x5  5      OPC=pand_xmm_xmm    
  movapd %xmm15, %xmm1  #  3     0xa  5      OPC=movapd_xmm_xmm  
  retq                  #  4     0xf  1      OPC=retq            
                                                                 
.size target, .-target
