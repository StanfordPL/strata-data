  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP   Bytes  Opcode                 
.target:                          #        0     0      OPC=<label>            
  vpmovsxdq %xmm1, %ymm3          #  1     0     5      OPC=vpmovsxdq_ymm_xmm  
  callq .move_128_064_xmm3_r8_r9  #  2     0x5   5      OPC=callq_label        
  movq $0x3, %rbx                 #  3     0xa   10     OPC=movq_r64_imm64     
  xaddw %r9w, %r8w                #  4     0x14  5      OPC=xaddw_r16_r16      
  decb %bh                        #  5     0x19  2      OPC=decb_rh            
  xchgw %bx, %r9w                 #  6     0x1b  4      OPC=xchgw_r16_r16      
  retq                            #  7     0x1f  1      OPC=retq               
                                                                               
.size target, .-target
