  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode                       
.target:                            #        0     0      OPC=<label>                  
  vfmsub231sd %xmm1, %xmm1, %xmm1   #  1     0     5      OPC=vfmsub231sd_xmm_xmm_xmm  
  callq .move_128_064_xmm1_r12_r13  #  2     0x5   5      OPC=callq_label              
  movswq %r13w, %rbx                #  3     0xa   4      OPC=movswq_r64_r16           
  xchgq %r13, %rbx                  #  4     0xe   3      OPC=xchgq_r64_r64            
  retq                              #  5     0x11  1      OPC=retq                     
                                                                                       
.size target, .-target
