  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                    #  Line  RIP   Bytes  Opcode                 
.target:                  #        0     0      OPC=<label>            
  vpmovzxwq %xmm1, %xmm6  #  1     0     5      OPC=vpmovzxwq_xmm_xmm  
  xorq %rbx, %rbx         #  2     0x5   3      OPC=xorq_r64_r64       
  movd %xmm6, %r9d        #  3     0x8   5      OPC=movd_r32_xmm       
  xchgb %bh, %bh          #  4     0xd   2      OPC=xchgb_rh_rh        
  xorq %r9, %rbx          #  5     0xf   3      OPC=xorq_r64_r64       
  retq                    #  6     0x12  1      OPC=retq               
                                                                       
.size target, .-target
