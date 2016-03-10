  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                  
.target:                                          #        0     0      OPC=<label>             
  callq .move_128_032_xmm3_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label         
  unpckhps %xmm2, %xmm10                          #  2     0x5   4      OPC=unpckhps_xmm_xmm    
  divsd %xmm10, %xmm10                            #  3     0x9   5      OPC=divsd_xmm_xmm       
  vmovsd %xmm11, %xmm10, %xmm1                    #  4     0xe   5      OPC=vmovsd_xmm_xmm_xmm  
  retq                                            #  5     0x13  1      OPC=retq                
                                                                                                
.size target, .-target
