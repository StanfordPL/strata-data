  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode            
.target:                   #        0     0      OPC=<label>       
  callq .set_zf            #  1     0     5      OPC=callq_label   
  callq .read_zf_into_rbx  #  2     0x5   5      OPC=callq_label   
  setge %cl                #  3     0xa   3      OPC=setge_r8      
  movl %ebx, %eax          #  4     0xd   2      OPC=movl_r32_r32  
  xorb %cl, %ah            #  5     0xf   2      OPC=xorb_rh_r8    
  orq %rbx, %rax           #  6     0x11  3      OPC=orq_r64_r64   
  retq                     #  7     0x14  1      OPC=retq          
                                                                   
.size target, .-target
