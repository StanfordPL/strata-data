  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode              
.target:                   #        0     0      OPC=<label>         
  xorw %ax, %ax            #  1     0     3      OPC=xorw_r16_r16    
  setbe %al                #  2     0x3   3      OPC=setbe_r8        
  callq .read_pf_into_rcx  #  3     0x6   5      OPC=callq_label     
  movq %rcx, %rbp          #  4     0xb   3      OPC=movq_r64_r64    
  movswl %bp, %r9d         #  5     0xe   4      OPC=movswl_r32_r16  
  addw %r9w, %r9w          #  6     0x12  4      OPC=addw_r16_r16    
  cwtl                     #  7     0x16  1      OPC=cwtl            
  adcb %ah, %bl            #  8     0x17  2      OPC=adcb_r8_rh      
  adcq %rbx, %rbx          #  9     0x19  3      OPC=adcq_r64_r64    
  retq                     #  10    0x1c  1      OPC=retq            
                                                                     
.size target, .-target
