  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode              
.target:                   #        0     0      OPC=<label>         
  movq $0x0, %rbx          #  1     0     10     OPC=movq_r64_imm64  
  movzbl %bl, %r13d        #  2     0xa   4      OPC=movzbl_r32_r8   
  decb %bl                 #  3     0xe   2      OPC=decb_r8         
  adcb %bl, %r13b          #  4     0x10  3      OPC=adcb_r8_r8      
  callq .read_sf_into_rbx  #  5     0x13  5      OPC=callq_label     
  retq                     #  6     0x18  1      OPC=retq            
                                                                     
.size target, .-target
