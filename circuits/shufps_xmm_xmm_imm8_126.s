  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                    #  Line  RIP  Bytes  Opcode                 
.target:                  #        0    0      OPC=<label>            
  vmovddup %xmm2, %xmm9   #  1     0    4      OPC=vmovddup_xmm_xmm   
  punpckhdq %xmm9, %xmm2  #  2     0x4  5      OPC=punpckhdq_xmm_xmm  
  unpckhpd %xmm2, %xmm1   #  3     0x9  4      OPC=unpckhpd_xmm_xmm   
  retq                    #  4     0xd  1      OPC=retq               
                                                                      
.size target, .-target
