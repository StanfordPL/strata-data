  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                 
.target:                                        #        0     0      OPC=<label>            
  xorq %rbx, %rbx                               #  1     0     3      OPC=xorq_r64_r64       
  vmovshdup %xmm1, %xmm2                        #  2     0x3   4      OPC=vmovshdup_xmm_xmm  
  callq .move_128_032_xmm2_r10d_r11d_r12d_r13d  #  3     0x7   5      OPC=callq_label        
  notw %bx                                      #  4     0xc   3      OPC=notw_r16           
  cmovbew %r13w, %bx                            #  5     0xf   5      OPC=cmovbew_r16_r16    
  retq                                          #  6     0x14  1      OPC=retq               
                                                                                             
.size target, .-target
