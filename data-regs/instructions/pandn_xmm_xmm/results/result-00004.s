  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                  #  Line  RIP   Bytes  Opcode               
.target:                #        0     0      OPC=<label>          
  vmovapd %xmm1, %xmm9  #  1     0     4      OPC=vmovapd_xmm_xmm  
  orpd %xmm2, %xmm1     #  2     0x4   4      OPC=orpd_xmm_xmm     
  xorps %xmm9, %xmm1    #  3     0x8   4      OPC=xorps_xmm_xmm    
  por %xmm1, %xmm1      #  4     0xc   4      OPC=por_xmm_xmm      
  retq                  #  5     0x10  1      OPC=retq             
                                                                   
.size target, .-target
