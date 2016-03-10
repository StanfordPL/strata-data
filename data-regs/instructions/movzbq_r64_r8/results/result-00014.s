  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                     #  Line  RIP   Bytes  Opcode              
.target:                   #        0     0      OPC=<label>         
  movq $0x80, %rbx         #  1     0     10     OPC=movq_r64_imm64  
  callq .clear_cf          #  2     0xa   5      OPC=callq_label     
  incw %bx                 #  3     0xf   3      OPC=incw_r16        
  callq .read_zf_into_rbx  #  4     0x12  5      OPC=callq_label     
  adcb %cl, %bl            #  5     0x17  2      OPC=adcb_r8_r8      
  retq                     #  6     0x19  1      OPC=retq            
                                                                     
.size target, .-target
