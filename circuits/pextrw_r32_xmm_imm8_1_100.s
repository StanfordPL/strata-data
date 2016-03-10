  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                  
.target:                                          #        0     0      OPC=<label>             
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label         
  pmovzxwd %xmm10, %xmm12                         #  2     0x5   6      OPC=pmovzxwd_xmm_xmm    
  vandps %xmm10, %xmm12, %xmm12                   #  3     0xb   5      OPC=vandps_xmm_xmm_xmm  
  movq %xmm12, %rbx                               #  4     0x10  5      OPC=movq_r64_xmm        
  retq                                            #  5     0x15  1      OPC=retq                
                                                                                                
.size target, .-target
