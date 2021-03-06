  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                            #  Line  RIP   Bytes  Opcode              
.target:                          #        0     0      OPC=<label>         
  movq $0xffffffffffffffc0, %rbx  #  1     0     10     OPC=movq_r64_imm64  
  adcw %bx, %bx                   #  2     0xa   3      OPC=adcw_r16_r16    
  decb %bl                        #  3     0xd   2      OPC=decb_r8         
  callq .read_sf_into_rbx         #  4     0xf   5      OPC=callq_label     
  retq                            #  5     0x14  1      OPC=retq            
                                                                            
.size target, .-target
