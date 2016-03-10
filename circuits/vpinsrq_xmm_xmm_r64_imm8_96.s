  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                          #  Line  RIP  Bytes  Opcode                    
.target:                        #        0    0      OPC=<label>               
  vmovq %rbx, %xmm1             #  1     0    5      OPC=vmovq_xmm_r64         
  vmovhlps %xmm2, %xmm1, %xmm4  #  2     0x5  4      OPC=vmovhlps_xmm_xmm_xmm  
  punpcklqdq %xmm4, %xmm1       #  3     0x9  4      OPC=punpcklqdq_xmm_xmm    
  retq                          #  4     0xd  1      OPC=retq                  
                                                                               
.size target, .-target
