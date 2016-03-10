  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                      #  Line  RIP  Bytes  Opcode                 
.target:                    #        0    0      OPC=<label>            
  vmovupd %xmm2, %xmm12     #  1     0    4      OPC=vmovupd_xmm_xmm    
  vmovshdup %xmm12, %xmm12  #  2     0x4  5      OPC=vmovshdup_xmm_xmm  
  movsldup %xmm12, %xmm1    #  3     0x9  5      OPC=movsldup_xmm_xmm   
  retq                      #  4     0xe  1      OPC=retq               
                                                                        
.size target, .-target
