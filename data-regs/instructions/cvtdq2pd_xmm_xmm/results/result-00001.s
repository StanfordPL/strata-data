  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                              #  Line  RIP  Bytes  Opcode                       
.target:                            #        0    0      OPC=<label>                  
  vpunpcklqdq %xmm2, %xmm2, %xmm12  #  1     0    4      OPC=vpunpcklqdq_xmm_xmm_xmm  
  vcvtdq2pd %ymm12, %ymm14          #  2     0x4  5      OPC=vcvtdq2pd_ymm_ymm        
  movups %xmm14, %xmm1              #  3     0x9  4      OPC=movups_xmm_xmm           
  retq                              #  4     0xd  1      OPC=retq                     
                                                                                      
.size target, .-target
