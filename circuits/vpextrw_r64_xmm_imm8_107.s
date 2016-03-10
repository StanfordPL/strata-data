  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                       
.target:                                        #        0     0      OPC=<label>                  
  pmovzxwd %xmm1, %xmm1                         #  1     0     5      OPC=pmovzxwd_xmm_xmm         
  callq .move_128_032_xmm1_r10d_r11d_r12d_r13d  #  2     0x5   5      OPC=callq_label              
  vpunpckhqdq %xmm1, %xmm1, %xmm2               #  3     0xa   4      OPC=vpunpckhqdq_xmm_xmm_xmm  
  cmpb %r13b, %r10b                             #  4     0xe   3      OPC=cmpb_r8_r8               
  callq .move_128_032_xmm2_r10d_r11d_r12d_r13d  #  5     0x11  5      OPC=callq_label              
  callq .read_pf_into_rbx                       #  6     0x16  5      OPC=callq_label              
  xaddw %bx, %r13w                              #  7     0x1b  5      OPC=xaddw_r16_r16            
  retq                                          #  8     0x20  1      OPC=retq                     
                                                                                                   
.size target, .-target
