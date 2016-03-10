  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                    
.target:                                        #        0     0      OPC=<label>               
  vbroadcastsd %xmm1, %ymm14                    #  1     0     5      OPC=vbroadcastsd_ymm_xmm  
  xorq %r9, %r9                                 #  2     0x5   3      OPC=xorq_r64_r64          
  callq .read_of_into_rbx                       #  3     0x8   5      OPC=callq_label           
  adcl %r9d, %ebx                               #  4     0xd   3      OPC=adcl_r32_r32          
  vpmovzxwq %xmm14, %ymm3                       #  5     0x10  5      OPC=vpmovzxwq_ymm_xmm     
  callq .move_128_032_xmm3_r10d_r11d_r12d_r13d  #  6     0x15  5      OPC=callq_label           
  cmovaew %r12w, %bx                            #  7     0x1a  5      OPC=cmovaew_r16_r16       
  retq                                          #  8     0x1f  1      OPC=retq                  
                                                                                                
.size target, .-target
