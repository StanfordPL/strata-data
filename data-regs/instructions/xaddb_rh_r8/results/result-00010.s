  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode             
.target:                   #        0     0      OPC=<label>        
  movsbw %ah, %bp          #  1     0     4      OPC=movsbw_r16_rh  
  addb %bl, %ah            #  2     0x4   2      OPC=addb_rh_r8     
  callq .read_sf_into_rbx  #  3     0x6   5      OPC=callq_label    
  movsbq %bpl, %r13        #  4     0xb   4      OPC=movsbq_r64_r8  
  xchgl %ebx, %r13d        #  5     0xf   3      OPC=xchgl_r32_r32  
  retq                     #  6     0x12  1      OPC=retq           
                                                                    
.size target, .-target
