  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                    #  Line  RIP  Bytes  Opcode                 
.target:                  #        0    0      OPC=<label>            
  vmovddup %xmm2, %xmm1   #  1     0    4      OPC=vmovddup_xmm_xmm   
  vmovshdup %xmm3, %xmm3  #  2     0x4  4      OPC=vmovshdup_xmm_xmm  
  unpckhpd %xmm3, %xmm1   #  3     0x8  4      OPC=unpckhpd_xmm_xmm   
  retq                    #  4     0xc  1      OPC=retq               
                                                                      
.size target, .-target
