  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP  Bytes  Opcode             
.target:                   #        0    0      OPC=<label>        
  callq .read_pf_into_rcx  #  1     0    5      OPC=callq_label    
  xorq %rax, %rax          #  2     0x5  3      OPC=xorq_r64_r64   
  movb %ah, %ah            #  3     0x8  2      OPC=movb_rh_rh     
  adcb %cl, %ch            #  4     0xa  2      OPC=adcb_rh_r8     
  xchgl %ecx, %eax         #  5     0xc  1      OPC=xchgl_eax_r32  
  retq                     #  6     0xd  1      OPC=retq           
                                                                   
.size target, .-target
