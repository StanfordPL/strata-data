  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                            #  Line  RIP   Bytes  Opcode              
.target:                          #        0     0      OPC=<label>         
  movq $0xfffffffffffffff0, %rbx  #  1     0     10     OPC=movq_r64_imm64  
  movzwl %bx, %ebp                #  2     0xa   3      OPC=movzwl_r32_r16  
  adcw %bp, %bx                   #  3     0xd   3      OPC=adcw_r16_r16    
  setnp %ah                       #  4     0x10  3      OPC=setnp_rh        
  retq                            #  5     0x13  1      OPC=retq            
                                                                            
.size target, .-target
