  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                    #  Line  RIP  Bytes  Opcode                 
.target:                  #        0    0      OPC=<label>            
  vmovshdup %xmm2, %xmm3  #  1     0    4      OPC=vmovshdup_xmm_xmm  
  movsldup %xmm3, %xmm4   #  2     0x4  4      OPC=movsldup_xmm_xmm   
  movdqa %xmm4, %xmm1     #  3     0x8  4      OPC=movdqa_xmm_xmm     
  retq                    #  4     0xc  1      OPC=retq               
                                                                      
.size target, .-target
