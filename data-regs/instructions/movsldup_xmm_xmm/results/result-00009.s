  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                    #  Line  RIP  Bytes  Opcode                 
.target:                  #        0    0      OPC=<label>            
  orps %xmm2, %xmm2       #  1     0    3      OPC=orps_xmm_xmm       
  vmovsldup %xmm2, %xmm4  #  2     0x3  4      OPC=vmovsldup_xmm_xmm  
  movdqa %xmm4, %xmm1     #  3     0x7  4      OPC=movdqa_xmm_xmm     
  retq                    #  4     0xb  1      OPC=retq               
                                                                      
.size target, .-target
