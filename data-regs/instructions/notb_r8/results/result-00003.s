  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                #  Line  RIP  Bytes  Opcode              
.target:              #        0    0      OPC=<label>         
  movzbl %bl, %r10d   #  1     0    4      OPC=movzbl_r32_r8   
  movswl %r10w, %esp  #  2     0x4  4      OPC=movswl_r32_r16  
  notq %rsp           #  3     0x8  3      OPC=notq_r64        
  xchgb %bl, %spl     #  4     0xb  3      OPC=xchgb_r8_r8     
  retq                #  5     0xe  1      OPC=retq            
                                                               
.size target, .-target
