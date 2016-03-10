  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode             
.target:                   #        0     0      OPC=<label>        
  callq .read_zf_into_rcx  #  1     0     5      OPC=callq_label    
  setnge %ah               #  2     0x5   3      OPC=setnge_rh      
  movzbl %ah, %ebx         #  3     0x8   3      OPC=movzbl_r32_rh  
  orq %rcx, %rbx           #  4     0xb   3      OPC=orq_r64_r64    
  setne %ah                #  5     0xe   3      OPC=setne_rh       
  retq                     #  6     0x11  1      OPC=retq           
                                                                    
.size target, .-target
