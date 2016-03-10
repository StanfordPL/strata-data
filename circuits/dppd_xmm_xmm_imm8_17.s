  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                   
.target:                                          #        0     0      OPC=<label>              
  mulsd %xmm2, %xmm1                              #  1     0     4      OPC=mulsd_xmm_xmm        
  vandnps %xmm1, %xmm1, %xmm3                     #  2     0x4   4      OPC=vandnps_xmm_xmm_xmm  
  callq .move_128_032_xmm3_xmm8_xmm9_xmm10_xmm11  #  3     0x8   5      OPC=callq_label          
  movlhps %xmm8, %xmm1                            #  4     0xd   4      OPC=movlhps_xmm_xmm      
  addpd %xmm8, %xmm1                              #  5     0x11  5      OPC=addpd_xmm_xmm        
  retq                                            #  6     0x16  1      OPC=retq                 
                                                                                                 
.size target, .-target
