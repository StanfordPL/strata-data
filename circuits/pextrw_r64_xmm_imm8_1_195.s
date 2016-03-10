  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                 
.target:                                        #        0     0      OPC=<label>            
  vpmovsxwd %xmm1, %ymm2                        #  1     0     5      OPC=vpmovsxwd_ymm_xmm  
  callq .move_128_032_xmm2_r10d_r11d_r12d_r13d  #  2     0x5   5      OPC=callq_label        
  movswq %r13w, %r12                            #  3     0xa   4      OPC=movswq_r64_r16     
  movzwl %r12w, %ebx                            #  4     0xe   4      OPC=movzwl_r32_r16     
  retq                                          #  5     0x12  1      OPC=retq               
                                                                                             
.size target, .-target
