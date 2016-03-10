  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode             
.target:                   #        0     0      OPC=<label>        
  callq .set_of            #  1     0     5      OPC=callq_label    
  callq .read_of_into_rbx  #  2     0x5   5      OPC=callq_label    
  movsbw %ah, %si          #  3     0xa   4      OPC=movsbw_r16_rh  
  movzbq %sil, %rcx        #  4     0xe   4      OPC=movzbq_r64_r8  
  xchgl %ecx, %ebx         #  5     0x12  2      OPC=xchgl_r32_r32  
  retq                     #  6     0x14  1      OPC=retq           
                                                                    
.size target, .-target
