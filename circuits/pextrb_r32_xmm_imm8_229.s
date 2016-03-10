  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP   Bytes  Opcode               
.target:                                    #        0     0      OPC=<label>          
  movq $0xffffffffffffffc0, %rbx            #  1     0     10     OPC=movq_r64_imm64   
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  2     0xa   5      OPC=callq_label      
  popcntq %rbx, %rsi                        #  3     0xf   5      OPC=popcntq_r64_r64  
  callq .read_sf_into_rbx                   #  4     0x14  5      OPC=callq_label      
  xchgb %dh, %bl                            #  5     0x19  2      OPC=xchgb_r8_rh      
  retq                                      #  6     0x1b  1      OPC=retq             
                                                                                       
.size target, .-target
