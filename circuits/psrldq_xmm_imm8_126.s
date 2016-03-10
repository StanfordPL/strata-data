  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                  #  Line  RIP  Bytes  Opcode               
.target:                #        0    0      OPC=<label>          
  andnps %xmm1, %xmm1   #  1     0    3      OPC=andnps_xmm_xmm   
  movlhps %xmm1, %xmm1  #  2     0x3  3      OPC=movlhps_xmm_xmm  
  retq                  #  3     0x6  1      OPC=retq             
                                                                  
.size target, .-target
