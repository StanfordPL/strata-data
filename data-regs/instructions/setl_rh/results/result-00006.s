  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                               #  Line  RIP   Bytes  Opcode              
.target:                             #        0     0      OPC=<label>         
  callq .read_of_into_rbx            #  1     0     5      OPC=callq_label     
  movq $0x7, %rax                    #  2     0x5   10     OPC=movq_r64_imm64  
  setnge %bh                         #  3     0xf   3      OPC=setnge_rh       
  incl %eax                          #  4     0x12  2      OPC=incl_r32        
  callq .move_064_032_rbx_r10d_r11d  #  5     0x14  5      OPC=callq_label     
  cwtl                               #  6     0x19  1      OPC=cwtl            
  movq %rax, %rax                    #  7     0x1a  3      OPC=movq_r64_r64    
  xchgl %eax, %r10d                  #  8     0x1d  3      OPC=xchgl_r32_r32   
  retq                               #  9     0x20  1      OPC=retq            
                                                                               
.size target, .-target
