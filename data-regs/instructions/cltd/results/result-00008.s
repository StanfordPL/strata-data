  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    2 bytes

# Text                                      #  Line  RIP   Bytes  Opcode               
.target:                                    #        0     0      OPC=<label>          
  cltq                                      #  1     0     2      OPC=cltq             
  popcntq %rax, %rdx                        #  2     0x2   5      OPC=popcntq_r64_r64  
  vmovq %rax, %xmm1                         #  3     0x7   5      OPC=vmovq_xmm_r64    
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  4     0xc   5      OPC=callq_label      
  retq                                      #  5     0x11  1      OPC=retq             
                                                                                       
.size target, .-target
