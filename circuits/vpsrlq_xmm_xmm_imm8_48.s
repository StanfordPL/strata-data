  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                
.target:                                    #        0     0      OPC=<label>           
  callq .move_128_032_xmm2_eax_edx_r8d_r9d  #  1     0     5      OPC=callq_label       
  callq .move_032_016_edx_r8w_r9w           #  2     0x5   5      OPC=callq_label       
  vzeroall                                  #  3     0xa   3      OPC=vzeroall          
  vmovd %r9d, %xmm4                         #  4     0xd   5      OPC=vmovd_xmm_r32     
  pmovzxwq %xmm4, %xmm1                     #  5     0x12  5      OPC=pmovzxwq_xmm_xmm  
  retq                                      #  6     0x17  1      OPC=retq              
                                                                                        
.size target, .-target
