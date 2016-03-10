  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                        
.target:                                          #        0     0      OPC=<label>                   
  mulpd %xmm2, %xmm1                              #  1     0     4      OPC=mulpd_xmm_xmm             
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  2     0x4   5      OPC=callq_label               
  vmovups %xmm11, %xmm10                          #  3     0x9   5      OPC=vmovups_xmm_xmm           
  vfnmsub132ss %xmm10, %xmm10, %xmm11             #  4     0xe   5      OPC=vfnmsub132ss_xmm_xmm_xmm  
  addpd %xmm11, %xmm1                             #  5     0x13  5      OPC=addpd_xmm_xmm             
  unpckhpd %xmm10, %xmm1                          #  6     0x18  5      OPC=unpckhpd_xmm_xmm          
  retq                                            #  7     0x1d  1      OPC=retq                      
                                                                                                      
.size target, .-target
