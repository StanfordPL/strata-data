  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                
.target:                                    #        0     0      OPC=<label>           
  callq .move_128_032_xmm3_eax_edx_r8d_r9d  #  1     0     5      OPC=callq_label       
  callq .move_128_064_xmm2_r12_r13          #  2     0x5   5      OPC=callq_label       
  vzeroall                                  #  3     0xa   3      OPC=vzeroall          
  movl %eax, %r12d                          #  4     0xd   3      OPC=movl_r32_r32      
  callq .move_064_128_r12_r13_xmm1          #  5     0x10  5      OPC=callq_label       
  cvtss2sd %xmm1, %xmm1                     #  6     0x15  4      OPC=cvtss2sd_xmm_xmm  
  retq                                      #  7     0x19  1      OPC=retq              
                                                                                        
.size target, .-target
