  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP  Bytes  Opcode                       
.target:                            #        0    0      OPC=<label>                  
  vcvtsd2ss %xmm2, %xmm2, %xmm8     #  1     0    4      OPC=vcvtsd2ss_xmm_xmm_xmm    
  vpunpckhqdq %xmm8, %xmm2, %xmm10  #  2     0x4  5      OPC=vpunpckhqdq_xmm_xmm_xmm  
  punpcklqdq %xmm10, %xmm1          #  3     0x9  5      OPC=punpcklqdq_xmm_xmm       
  retq                              #  4     0xe  1      OPC=retq                     
                                                                                      
.size target, .-target
